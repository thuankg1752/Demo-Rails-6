User.transaction do
    (1..5).each do|i|
        User.create(:name=>"thuan#{i}",
        :password=>"123456789#{i}"),
        :password_confirmation=>"123456789#{i}"
    end
end