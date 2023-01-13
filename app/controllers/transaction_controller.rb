class TransactionController < ApplicationController
    def index
        @group = Group.find(params[:category_id])
        @transactions = @group.categories
        @categories = current_user.groups.all
    end

    def create
        @transaction = Category.new(transaction_params)
        @transaction.user_id = current_user.id
        if @transaction.save
            @group_categories = GroupCategory.new(group_id: params[:category_id], category_id: @transaction.id)
            if @group_categories.save
                
        

end

