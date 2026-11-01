.class public Lfreemarker/ext/beans/i;
.super Lfreemarker/ext/beans/catch;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/try;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/catch;-><init>(Lfreemarker/ext/beans/try;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/beans/catch;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/Class;)Lfreemarker/template/TemplateModel;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Enum;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lfreemarker/ext/beans/a;

    invoke-virtual {p0}, Lfreemarker/ext/beans/catch;->new()Lfreemarker/ext/beans/try;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lfreemarker/ext/beans/a;-><init>(Ljava/util/Map;Lfreemarker/ext/beans/try;)V

    return-object p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/beans/catch;->isEmpty()Z

    move-result v0

    return v0
.end method
