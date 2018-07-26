defmodule Sms.Users do
  @moduledoc """
  The Users context.
  """

  import Ecto.Query, warn: false
  alias Sms.Repo

  alias Sms.Users.SmsUser
  alias Sms.Users.WebAdmin

  @doc """
  Returns the list of sms_users.

  ## Examples

      iex> list_sms_users()
      [%SmsUser{}, ...]

  """
  def list_sms_users do
    Repo.all(SmsUser)
  end

  def registered_sms_users do
    query = from(u in "sms_users",
      where: u.status == "registered"
        and u.is_admin == false,
      select: u.number)

    Repo.all(query)
  end

  def stop_sms_users do
    query = from(u in "sms_users",
      where: u.status == "stop"
        and u.is_admin == false,
      select: u.number)

    Repo.all(query)
  end

  def requested_sms_users do
    query = from(u in "sms_users",
      where: u.status == "request_pending"
        and u.is_admin == false,
      select: u.number)

    Repo.all(query)
  end

  def admin_sms_users do
    query = from(u in "sms_users",
      where: u.status == "registered"
        and u.is_admin == true,
      select: u.number)

    Repo.all(query)
  end
  @doc """
  Gets a single sms_user.

  Raises `Ecto.NoResultsError` if the Sms user does not exist.

  ## Examples

      iex> get_sms_user!(123)
      %SmsUser{}

      iex> get_sms_user!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sms_user!(id), do: Repo.get!(SmsUser, id)

  @doc """
  Creates a sms_user.

  ## Examples

      iex> create_sms_user(%{field: value})
      {:ok, %SmsUser{}}

      iex> create_sms_user(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sms_user(attrs \\ %{}) do
    %SmsUser{}
    |> SmsUser.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sms_user.

  ## Examples

      iex> update_sms_user(sms_user, %{field: new_value})
      {:ok, %SmsUser{}}

      iex> update_sms_user(sms_user, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sms_user(%SmsUser{} = sms_user, attrs) do
    sms_user
    |> SmsUser.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a SmsUser.

  ## Examples

      iex> delete_sms_user(sms_user)
      {:ok, %SmsUser{}}

      iex> delete_sms_user(sms_user)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sms_user(%SmsUser{} = sms_user) do
    Repo.delete(sms_user)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sms_user changes.

  ## Examples

      iex> change_sms_user(sms_user)
      %Ecto.Changeset{source: %SmsUser{}}

  """
  def change_sms_user(%SmsUser{} = sms_user) do
    SmsUser.changeset(sms_user, %{})
  end
end
