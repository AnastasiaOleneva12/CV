name = "Anastasia Oleneva"

def choose_system(user_name):
    if len(user_name) % 2 == 0:
        return "ubuntu:20.04"
    else:
        return "debian:11"

if __name__ == "__main__":
    system = choose_system(name)
    print(f"Для пользователя {name} выбрана система {system}")