.class Lfreemarker/core/a$if;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    return-void
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/t;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lfreemarker/template/TemplateModelWithAPISupport;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lfreemarker/template/TemplateModelWithAPISupport;

    invoke-interface {v0}, Lfreemarker/template/TemplateModelWithAPISupport;->getAPI()Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, v0, p1}, Lfreemarker/core/h0;->public(Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)V

    .line 6
    new-instance v1, Lfreemarker/core/do;

    iget-object v2, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-direct {v1, p1, v2, v0}, Lfreemarker/core/do;-><init>(Lfreemarker/core/d0;Lfreemarker/core/h0;Lfreemarker/template/TemplateModel;)V

    throw v1

    .line 7
    :cond_1
    new-instance p1, Landroid/support/v4/nl2;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Can\'t use ?api, because the \""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "api_builtin_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\" configuration setting is false. Think twice before you set it to true though. Especially, it shouldn\'t abused for modifying Map-s and Collection-s."

    aput-object v2, v0, v1

    invoke-direct {p1, p0, v0}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p1
.end method
