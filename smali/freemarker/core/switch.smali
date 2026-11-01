.class abstract Lfreemarker/core/switch;
.super Lfreemarker/core/return;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method

.method public static s(Lfreemarker/core/d0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/b1;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2, p0}, Lfreemarker/core/b1;->getInstance(Lfreemarker/core/h0;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lfreemarker/core/i2;

    const-string v1, "date"

    invoke-direct {v0, p2, p1, v1, p0}, Lfreemarker/core/i2;-><init>(Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;Ljava/lang/String;Lfreemarker/core/d0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lfreemarker/template/TemplateDateModel;

    .line 4
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {v0, v1}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lfreemarker/core/switch;->r(Ljava/util/Date;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {p1, v0, v1}, Lfreemarker/core/switch;->s(Lfreemarker/core/d0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public abstract r(Ljava/util/Date;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation
.end method
