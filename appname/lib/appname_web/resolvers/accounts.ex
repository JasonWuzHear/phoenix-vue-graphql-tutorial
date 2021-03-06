# lib/appname_web/resolvers/accounts.ex

defmodule AppnameWeb.Resolvers.Accounts do 
  def find_user(_parent, %{id: id}, _resolution) do
    case Appname.Accounts.find_user(id) do
      nil ->
        {:error, "User ID #{id} not found"}
      user ->
        {:ok, user}
    end
  end
end