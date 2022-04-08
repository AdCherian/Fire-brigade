<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp"/>
<body>
<jsp:include page="nav.jsp"/>
<section class="pt-20 lg:pt-[120px] pb-10 lg:pb-20 bg-[#F3F4F6]">
    <div class="container">
        <div class="flex flex-wrap -mx-4">
                <div class="w-full md:w-1/2 xl:w-1/3 px-4">
                    <div class="bg-white rounded-lg overflow-hidden mb-10">
                        <img
                                src="strazak.png"
                                alt="image"
                                class="w-full"
                        />
                        <div class="p-8 sm:p-9 md:p-7 xl:p-9 text-center">
                            <h3>
                                <a
                                        class="
                        font-semibold
                        text-dark text-xl
                        sm:text-[22px]
                        md:text-xl
                        lg:text-[22px]
                        xl:text-xl
                        2xl:text-[22px]
                        mb-4
                        block
                        hover:text-primary
                        "
                                >
                                    Dodawanie Strażaka</a>
                            </h3>
                            <p class="text-base text-body-color leading-relaxed mb-7">
                                Tutaj można dodawać nowych strażaków
                            </p>
                            <a
                                    href="./addFirefighter"
                                    class="
                     inline-block
                     py-2
                     px-7
                     border border-[#E5E7EB]
                     rounded-full
                     text-base text-body-color
                     font-medium
                     hover:border-primary hover:bg-primary hover:text-white
                     transition
                     "
                            >
                                Dodaj
                            </a>
                        </div>
                    </div>
                </div>
                <div class="w-full md:w-1/2 xl:w-1/3 px-4">
                    <div class="bg-white rounded-lg overflow-hidden mb-10">
                        <img
                                src="sprzet.png"
                                alt="image"
                                class="w-full"
                        />
                        <div class="p-8 sm:p-9 md:p-7 xl:p-9 text-center">
                            <h3>
                                <a
                                        class="
                        font-semibold
                        text-dark text-xl
                        sm:text-[22px]
                        md:text-xl
                        lg:text-[22px]
                        xl:text-xl
                        2xl:text-[22px]
                        mb-4
                        block
                        hover:text-primary
                        "
                                >
                                    Dodawanie sprzętu
                                </a>
                            </h3>
                            <p class="text-base text-body-color leading-relaxed mb-7">

                                Tutaj możesz dodać oraz edytować sprzęt
                            </p>
                            <a
                                    href="./addTool"
                                    class="
                     inline-block
                     py-2
                     px-7
                     border border-[#E5E7EB]
                     rounded-full
                     text-base text-body-color
                     font-medium
                     hover:border-primary hover:bg-primary hover:text-white
                     transition
                     "
                            >

                                Dodaj

                            </a>
                        </div>
                    </div>
                </div>
                <div class="w-full md:w-1/2 xl:w-1/3 px-4">
                    <div class="bg-white rounded-lg overflow-hidden mb-10">
                        <img
                                src="pozar.png"
                                alt="image"
                                class="w-full"
                        />
                        <div class="p-8 sm:p-9 md:p-7 xl:p-9 text-center">
                            <h3>
                                <a
                                        class="
                        font-semibold
                        text-dark text-xl
                        sm:text-[22px]
                        md:text-xl
                        lg:text-[22px]
                        xl:text-xl
                        2xl:text-[22px]
                        mb-4
                        block
                        hover:text-primary
                        "
                                >
                                    Dodawanie akcji
                                </a>
                            </h3>
                            <p class="text-base text-body-color leading-relaxed mb-7">
                                Tutaj możesz dodać akcję
                            </p>
                            <a
                                    href="./addAction"
                                    class="
                     inline-block
                     py-2
                     px-7
                     border border-[#E5E7EB]
                     rounded-full
                     text-base text-body-color
                     font-medium
                     hover:border-primary hover:bg-primary hover:text-white
                     transition
                     "
                            >
                                Dodaj
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>

