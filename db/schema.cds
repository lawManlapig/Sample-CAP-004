namespace app.SalesOrders;

using {managed} from '@sap/cds/common';

//Parent Entity
entity OrderHeaders : managed {
    key id          : UUID;
        ordernumber : Int32;
        description : String(50);
        orderitems  : Association to many OrderItems
                          on orderitems.ordernumber = $self;
}

//Child Entity
entity OrderItems {
    key id             : UUID;
        ordernumber    : Association to OrderHeaders;
        itemnumber     : Int32;
        materialnumber : Int32;
        amount         : Decimal(15, 2);
        materials      : Association to one Materials
                             on materials.materialnumber = $self;
}

//Grand Child Entity
entity Materials {
    key id                  : UUID;
        materialnumber      : Association to OrderItems;
        materialdescription : String(50);
}
