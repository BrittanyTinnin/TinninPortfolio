       <% if @skills %>
          <% @skills.each do |skill| %>
            <span class="font-weight-bold"><%= skill.title %></span>
            <div class="progress" style="width: 100%">
              <div class="progress-bar progress-bar-striped progress-bar-animated bg-success" role="progressbar" aria-valuenow="<%= skill.percent_utilized %>" aria-valuemin="0" aria-valuemax="100" style="width: <%= skill.percent_utilized %>%"></div>
            </div>
            <% if current_user %>
              <div class="card-body">
                <%= link_to 'Delete', skill, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger' %>
              </div>
            <% end %>
          <% end %> 
        <% end %>