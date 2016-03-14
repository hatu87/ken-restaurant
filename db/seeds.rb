# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Section.delete_all
Food.delete_all
Comment.delete_all
Cart.delete_all
CartItem.delete_all
Order.delete_all
OrderItem.delete_all

section = Section.create(name: 'Breakfast')
section.foods << Food.create(name: 'Bun Hue', price: 25000, 
                            image_url: 'http://img.f33.dulich.vnecdn.net/2016/02/15/bun-bo-hue-7448-1455504493.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Bun Thai', price: 25000, 
                            image_url: 'http://img.v3.news.zdn.vn/w660/Uploaded/wyhktpu/2014_11_21/Da_them_voi_bun_Thai_chua_cay_tu_Vuong_Quoc_Tom_1.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Com tam', price: 25000, 
                            image_url: 'http://c0.f21.img.vnecdn.net/2014/03/04/2-8990-1393917247.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Hu tieu', price: 25000, 
                            image_url: 'http://chuyengiaamthuc.com/wp-content/uploads/2015/07/Cach-lam-hu-tieu-nam-vang-1.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Xoi la sen', price: 15000, 
                            image_url: 'http://www.tlnet.com.vn/uploadfiles/cuisine/com-la-sen.jpg',
                            description: Faker::Lorem.paragraph)

section = Section.create(name: 'Lunch')
section.foods << Food.create(name: 'Goi ngo sen tai heo', price: 35000, 
                            image_url: 'http://amthucvacuocsong.vn/wp-content/uploads/2015/12/goi-ngo-sen-tai-heo-ngon-tuyet.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Ga kho gung', price: 25000, 
                            image_url: 'http://7monngonmoingay.com/wp-content/uploads/2014/12/cach-lam-mon-ga-kho-gung-am-nong-quyen-ru.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Com chien thap cam', price: 25000, 
                            image_url: 'http://thelongrestaurant.com/raovat/muaban1/upload/images/SANPHAM/com-chien-rau-trung/anhnen/com%20chien%20rau%20trung.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Cha gio', price: 25000, 
                            image_url: 'http://odacsan.com/wp-content/uploads/2014/10/Screen-Shot-2013-09-08-at-3.23.47-PM.png',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Canh chua la giang', price: 35000, 
                            image_url: 'http://7monngonmoingay.info/wp-content/uploads/2015/03/cach-nau-mon-canh-chua-la-giang-thit-ga-ngon.jpg',
                            description: Faker::Lorem.paragraph)

section = Section.create(name: 'Dinner')
section.foods << Food.create(name: 'Bo xao rau cu', price: 35000, 
                            image_url: 'http://giadinh.vcmedia.vn/Images/Uploaded/Share/2009/10/13/bo-xao.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Heo quay kho cai chua', price: 25000, 
                            image_url: 'http://yeunoitro.net/wp-content/uploads/2014/12/heo-quay-kho-cai-chua.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Ca me kho rieng', price: 25000, 
                            image_url: 'http://cakho.net/wp-content/uploads/2014/10/món-cá-mè-kho-riềng.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Chan ga kho trung cut', price: 25000, 
                            image_url: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQdp9W7Z183EkVKEbqpXtYtOp9hEGWNAvcNB8VnzHNyVlJq_vDN',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Dua chua xao dau', price: 35000, 
                            image_url: 'http://2monngonmoingay.net/wp-content/uploads/2014/12/cach-lam-mon-dua-xao-thit-bo.jpg',
                            description: Faker::Lorem.paragraph)

section = Section.create(name: 'Drinks')
section.foods << Food.create(name: 'Tra sua dao', price: 35000, 
                            image_url: 'http://hoiquanamthuc.com/wp-content/uploads/2015/06/Cach-lam-tra-sua-dao-thom-thom-ngot-ngot-cho-ca-nha-cung-thuong-thuc-5.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Caphe sua da', price: 25000, 
                            image_url: 'http://img.v3.news.zdn.vn/w660/Uploaded/ngtmns/2014_11_25/travel_for_children__coffee__1.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Sinh to bo', price: 25000, 
                            image_url: 'http://phunutoday.vn/upload_images/images/2015/04/28/cach-lam-sinh-to-bo-9.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Soda chanh', price: 25000, 
                            image_url: 'http://2monngonmoingay.net/wp-content/uploads/2015/09/mon-ngon-ngay-he-hoc-lam-cocktail-chanh-bac-ha-2.jpg',
                            description: Faker::Lorem.paragraph)
section.foods << Food.create(name: 'Tra xanh latte', price: 35000, 
                            image_url: 'http://kinhdoanhcafe.com/wp-content/uploads/2013/04/pha-che-matcha-latte0.jpg',
                            description: Faker::Lorem.paragraph)

# generate comments
Food.all.each do |food|
       3.times do
              food.comments << Comment.create(customer_name: Faker::Name.name, 
                                          avatar_url: Faker::Avatar.image, 
                                          text:Faker::Lorem.paragraph, 
                                          rating: Faker::Number.between(0, 5),
                                          created_at: Faker::Date.between(2.days.ago, Date.today))
       end
end
