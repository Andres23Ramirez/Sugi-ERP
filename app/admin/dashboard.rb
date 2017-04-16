ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
        column do
            panel "Recent Establisment" do
                ul do
                    table_for Establishment.order("created_at desc").limit(5) do
                        column :number
                        column :name
                        column :numberPhone
                        column "CREATE DATE", :created_at
                    end
                    strong { link_to "View All Establishments", admin_establishments_path, class: 'button' }
                end
            end
        end
        column do
            panel "Recent Entry" do
                ul do
                    table_for Entry.order("created_at desc").limit(5) do
                        column :description
                        column :amoun
                        column :date
                        column "CREATE DATE", :created_at
                    end
                    strong { link_to "View All Entry", admin_entries_path, class: 'button' }
                end
            end
        end
    end

    columns do
        column do
            panel "Recent Outflow" do
                ul do
                    table_for Outflow.order("created_at desc").limit(5) do
                        column :description
                        column :amoun
                        column :date
                        column "CREATE DATE", :created_at
                    end
                    strong { link_to "View All Outflow", admin_outflows_path, class: 'button' }
                end
            end
        end
        column do
            panel "Recent Bill" do
                ul do
                    table_for Bill.order("created_at desc").limit(5) do
                        column :number
                        column "Establishment" do |bill|
                          bill.establishment.name
                        end
                        column :amount
                        column "CREATE DATE", :created_at
                    end
                    strong { link_to "View All Bill", admin_bills_path, class: 'button' }
                end
            end
        end
    end


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
