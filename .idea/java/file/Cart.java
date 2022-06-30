package file;

import java.io.Serializable;


    public class Cart implements Serializable {
//        Map<Integer, Product> data = new HashMap<>();
//
//        public Cart() {
//
//        }
//
//        public static Cart getCart(HttpSession session) {
//            return session.getAttribute("cart") == null ? new Cart():(Cart) session.getAttribute("cart");
//        }
//
//        public void put(Product p) {
//            if (p == null) return;
//            if (data.containsKey(p.getId())) {
//                data.get(p.getId()).add();
//                return;
//
//            }
//            p.setQuantity(1);
//            data.put(p.getId(),p);
//        }
//        public void update(String id, int quantity){
//            if(quantity < 0 )return;
//            if(data.containsKey(id)) data.get(id).setQuantity(quantity);
//        }
//        public void remove (String id){
//            data.remove(id);
//        }
//        public long total(){
//            long sum = 0;
//            for(Product p:data.values()){
//                sum += p.getPrice() * p.getQuantity();
//
//            }
//            return sum;
//        }
//        public Collection<Product> getData(){
//            return data.values();
//        }
//        public void commit(HttpSession session) {
//            session.setAttribute("cart", this);
//        }
    }

