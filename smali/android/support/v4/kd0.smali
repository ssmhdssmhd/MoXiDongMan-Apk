.class public Landroid/support/v4/kd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/seimicrawler/xpath/core/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/support/v4/es1;Ljava/util/List;)Landroid/support/v4/dj2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/es1;",
            "Ljava/util/List<",
            "Landroid/support/v4/dj2;",
            ">;)",
            "Landroid/support/v4/dj2;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dj2;

    invoke-virtual {p1}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dj2;

    invoke-virtual {v0}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/dj2;

    invoke-virtual {p2}, Landroid/support/v4/dj2;->else()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p2

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/time/for;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang3/time/for;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/commons/lang3/time/for;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/dj2;->break(Ljava/lang/Object;)Landroid/support/v4/dj2;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Landroid/support/v4/hj2;

    const-string v0, "date format exception!"

    invoke-direct {p2, v0, p1}, Landroid/support/v4/hj2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "format-date"

    return-object v0
.end method
