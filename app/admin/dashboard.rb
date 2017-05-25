ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do

    columns do
        column do
            panel "Establecimientos recientes" do
                ul do
                    table_for Establishment.order("created_at desc").limit(5) do
                        column :number
                        column :name
                        column :numberPhone
                        column :created_at
                    end
                    strong { link_to "Ver Todos los Establecimientos", admin_establishments_path, class: 'button' }
                end
            end
        end
        column do
            panel "Ingresos recientes" do
                ul do
                    table_for Entry.order("created_at desc").limit(5) do
                        column :description
                        column "monto" do |entry|
                            money_without_cents_and_with_symbol entry.amount
                        end
                        column :date
                        column "fecha de creación", :created_at
                    end
                    strong { link_to "Ver Todos los Ingresos", admin_entries_path, class: 'button' }
                end
            end
        end
    end

    columns do
        column do
            panel "Salidas recientes" do
                ul do
                    table_for Outflow.order("created_at desc").limit(5) do
                        column :description
                        column "monto" do |outflow|
                            money_without_cents_and_with_symbol outflow.price
                        end
                        column :date
                        column "fecha de creación", :created_at
                    end
                    strong { link_to "Ver Todas las Salidas", admin_outflows_path, class: 'button' }
                end
            end
        end
        column do
            panel "Facturas recientes" do
                ul do
                    table_for Bill.order("created_at desc").limit(5) do
                        column :number
                        column "establecimiento" do |bill|
                            if bill.establishment.present?
                                bill.establishment.name
                            else
                                "No esta asociado a un establecimiento"
                            end
                        end
                        column "Monto" do |bill|
                            money_without_cents_and_with_symbol bill.amount
                        end
                        column "fecha de creación", :created_at
                    end
                    strong { link_to "Ver Todas las Facturas", admin_bills_path, class: 'button' }
                end
            end
        end
    end
    columns do
        column do
            panel "Trabajadores recientes" do
                ul do
                    table_for Employee.order("created_at desc").limit(5) do
                        column :first_name
                        column :last_name
                        column :date_hire
                        column :position
                        column "salario" do |employee|
                            money_without_cents_and_with_symbol employee.salary
                        end
                        column "fecha de creación", :created_at
                    end
                    strong { link_to "Ver Todos los Trabajadores", admin_employees_path, class: 'button' }
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
