.class Lfreemarker/core/b$new;
.super Lfreemarker/core/private;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/private;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Lfreemarker/template/TemplateNodeModelEx;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lfreemarker/template/TemplateNodeModelEx;->getNextSibling()Lfreemarker/template/TemplateNodeModelEx;

    move-result-object p1

    return-object p1
.end method
