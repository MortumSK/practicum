## Indexes
```bash
Созданные индексы:
skim=> SELECT tablename, indexname, indexdef FROM pg_indexes WHERE schemaname = 'public' ORDER BY tablename, indexname;
   tablename   |        indexname        |                                            indexdef
---------------+-------------------------+-------------------------------------------------------------------------------------------------
 order_product | idx_c_order_product_ids | CREATE INDEX idx_c_order_product_ids ON public.order_product USING btree (order_id, product_id)
 order_product | idx_order_id2           | CREATE INDEX idx_order_id2 ON public.order_product USING btree (order_id)
 order_product | idx_order_product_id    | CREATE INDEX idx_order_product_id ON public.order_product USING btree (product_id)
 orders        | idx_order_id            | CREATE INDEX idx_order_id ON public.orders USING btree (id)
 product       | idx_product_id          | CREATE INDEX idx_product_id ON public.product USING btree (id)
(5 rows)

```
