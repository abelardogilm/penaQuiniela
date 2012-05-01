class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :last_name,
                  :profile,:address, :postal_code, :city, :facebook, :twiter, :mobile, :phone,
                  :birthday, :avatar, :image_delete

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }


  def image_delete
      @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

  private
  def destroy_image
    self.avatar.destroy if @image_delete == "1"
  end
end
