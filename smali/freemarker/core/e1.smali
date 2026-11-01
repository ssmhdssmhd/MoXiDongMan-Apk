.class Lfreemarker/core/e1;
.super Lfreemarker/core/z3;
.source "SourceFile"


# instance fields
.field private final do:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/z3;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/e1;->do:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic case(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/p52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/e1;->else(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/core/e1;->do:Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 2
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public else(Ljava/lang/String;I)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/gc2;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lfreemarker/core/e1;->do:Ljava/text/DateFormat;

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Landroid/support/v4/gc2;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/support/v4/gc2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public for(Lfreemarker/template/TemplateDateModel;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/e1;->do:Ljava/text/DateFormat;

    invoke-static {p1}, Lfreemarker/core/e4;->if(Lfreemarker/template/TemplateDateModel;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public try()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
