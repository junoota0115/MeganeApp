<%= render 'shared/header' %>

<h1>登録ページ</h1>


    <div>
    <%= form.label :title%>
    <%= form.text_field :title%>
    </div>
    <div>
    <%= form.label :name%>
    <%= form.text_field :name%>
    </div>
    <div>
    <%= form.label :content%>
    <%= form.text_area :content%>
    </div>
    <%=form.submit %>
<%end%>