class ContactMessagesController < ApplicationController
  def create
    @contact_message = ContactMessage.new(contact_message_params)

    if @contact_message.save
      # Здесь можно добавить отправку email или другую логику обработки сообщения
      redirect_to root_path, notice: "Сообщение успешно отправлено!" # Или другой путь
    else
      # Здесь можно добавить рендер заглушки с ошибками валидации
      render 'pages/contact', status: :unprocessable_entity # Предполагая, что форма в 'pages/contact'
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end
end