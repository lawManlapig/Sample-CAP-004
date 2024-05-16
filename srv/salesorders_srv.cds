using app.SalesOrders as so from '../db/schema';

//Service
service SalesOrders_Service {
    entity OrderHeaders as projection on so.OrderHeaders;
    entity OrderItems   as projection on so.OrderItems;
    entity Materials    as projection on so.Materials;
}
