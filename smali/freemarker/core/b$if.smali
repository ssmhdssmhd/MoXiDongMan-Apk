.class Lfreemarker/core/b$if;
.super Lfreemarker/core/package;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/package;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateNodeModel;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/b$do;

    invoke-direct {v0, p2}, Lfreemarker/core/b$do;-><init>(Lfreemarker/core/d0;)V

    .line 2
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getParentNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lfreemarker/template/return;->add(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModel;->getParentNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method
