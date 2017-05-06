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
                        column :created_at
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
                        column "Amount" do |entry|
                            money_without_cents_and_with_symbol entry.amount
                        end
                        column :date
                        column :created_at
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
                        column "Amount" do |outflow|
                            money_without_cents_and_with_symbol outflow.price
                        end
                        column :date
                        column :created_at
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
                        column "Amount" do |bill|
                            money_without_cents_and_with_symbol bill.amount
                        end
                        column :created_at
                    end
                    strong { link_to "View All Bill", admin_bills_path, class: 'button' }
                end
            end
        end
    end
    columns do
        column do
            panel "Recent Employee" do
                ul do
                    table_for Employee.order("created_at desc").limit(5) do
                        column :first_name
                        column :last_name
                        column :date_hire
                        column :position
                        column "Salary" do |employee|
                            money_without_cents_and_with_symbol employee.salary
                        end
                        column :created_at
                    end
                    strong { link_to "View All Employees", admin_employees_path, class: 'button' }
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
