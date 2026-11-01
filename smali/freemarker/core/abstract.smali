.class abstract Lfreemarker/core/abstract;
.super Lfreemarker/core/return;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

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
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/h0;->c(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lfreemarker/core/abstract;->r(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public abstract r(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation
.end method
