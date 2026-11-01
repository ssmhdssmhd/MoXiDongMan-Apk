.class public final Lfreemarker/core/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Landroid/support/v4/vn0;

    const-string v0, "This number format doesn\'t support any parameters."

    invoke-direct {p0, v0}, Landroid/support/v4/vn0;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for(Lfreemarker/template/TemplateNumberModel;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Landroid/support/v4/ob2;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Ljava/lang/Number;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lfreemarker/core/f0;->public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;

    move-result-object p0

    throw p0
.end method

.method public static if(Lfreemarker/template/TemplateDateModel;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    const-class v0, Ljava/util/Date;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lfreemarker/core/f0;->public(Ljava/lang/Class;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Landroid/support/v4/k52;

    move-result-object p0

    throw p0
.end method
