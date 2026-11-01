.class Lfreemarker/core/protected$if;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private final final:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/protected$if;->final:I

    return-void
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

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lfreemarker/template/TemplateDateModel;

    .line 4
    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/wy1;

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {v0, v1}, Lfreemarker/core/f0;->while(Lfreemarker/template/TemplateDateModel;Lfreemarker/core/h0;)Ljava/util/Date;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/protected$if;->final:I

    invoke-direct {p1, v0, v1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object p1

    .line 6
    :cond_1
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-static {p1, v0, v1}, Lfreemarker/core/switch;->s(Lfreemarker/core/d0;Lfreemarker/template/TemplateModel;Lfreemarker/core/h0;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public r(Ljava/util/Date;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
