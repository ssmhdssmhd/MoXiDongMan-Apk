.class Lfreemarker/ext/beans/abstract;
.super Lfreemarker/ext/beans/volatile;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/volatile;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public catch(Lfreemarker/ext/beans/this;)[Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public if([Ljava/lang/Class;[I)V
    .locals 0

    return-void
.end method

.method public try(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/extends;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lfreemarker/ext/beans/volatile;->this()[[Ljava/lang/Class;

    move-result-object v1

    .line 4
    array-length v2, v1

    if-gt v2, v0, :cond_1

    .line 5
    sget-object p1, Lfreemarker/ext/beans/import;->new:Lfreemarker/ext/beans/import;

    return-object p1

    .line 6
    :cond_1
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 7
    sget-object p1, Lfreemarker/ext/beans/import;->new:Lfreemarker/ext/beans/import;

    return-object p1

    .line 8
    :cond_2
    new-array v2, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/volatile;->goto(I)[I

    move-result-object v3

    .line 10
    sget-object v4, Lfreemarker/ext/beans/volatile;->case:[I

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    .line 11
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_6

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfreemarker/template/TemplateModel;

    aget-object v7, v1, v5

    if-eqz v3, :cond_4

    aget v8, v3, v5

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    .line 13
    :goto_1
    invoke-virtual {p2, v6, v7, v8}, Lfreemarker/ext/beans/try;->u(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 14
    sget-object v7, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne v6, v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 15
    invoke-static {v5}, Lfreemarker/ext/beans/import;->case(I)Lfreemarker/ext/beans/import;

    move-result-object p1

    return-object p1

    .line 16
    :cond_5
    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p0, v2, v4}, Lfreemarker/ext/beans/volatile;->case([Ljava/lang/Object;Z)Lfreemarker/ext/beans/default;

    move-result-object p1

    .line 18
    instance-of p2, p1, Lfreemarker/ext/beans/this;

    if-eqz p2, :cond_9

    .line 19
    check-cast p1, Lfreemarker/ext/beans/this;

    .line 20
    iget-boolean p2, p0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz p2, :cond_7

    if-eqz v3, :cond_8

    .line 21
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v3}, Lfreemarker/ext/beans/volatile;->for([Ljava/lang/Object;[Ljava/lang/Class;[I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v2}, Lfreemarker/ext/beans/try;->this([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 23
    :cond_8
    :goto_2
    new-instance p2, Lfreemarker/ext/beans/finally;

    invoke-direct {p2, p1, v2}, Lfreemarker/ext/beans/finally;-><init>(Lfreemarker/ext/beans/this;[Ljava/lang/Object;)V

    return-object p2

    .line 24
    :cond_9
    check-cast p1, Lfreemarker/ext/beans/while;

    invoke-static {p1, v2}, Lfreemarker/ext/beans/import;->if(Lfreemarker/ext/beans/while;[Ljava/lang/Object;)Lfreemarker/ext/beans/extends;

    move-result-object p1

    return-object p1
.end method
