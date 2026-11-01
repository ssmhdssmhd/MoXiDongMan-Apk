.class Lfreemarker/core/implements$do;
.super Lfreemarker/core/throws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/implements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/throws;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateHashModelEx;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;,
            Lfreemarker/core/b1;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of p1, v0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lfreemarker/core/m;

    invoke-direct {p1, v0}, Lfreemarker/core/m;-><init>(Lfreemarker/template/TemplateCollectionModel;)V

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "keys"

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/core/throws;->s(Ljava/lang/String;Lfreemarker/template/TemplateModel;Lfreemarker/core/d0;)Lfreemarker/core/b1;

    move-result-object p1

    throw p1
.end method
