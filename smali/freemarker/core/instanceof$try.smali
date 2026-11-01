.class Lfreemarker/core/instanceof$try;
.super Lfreemarker/core/extends;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/extends;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance p2, Landroid/support/v4/az1;

    invoke-virtual {p1}, Lfreemarker/core/d1$do;->try()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/support/v4/az1;-><init>(I)V

    return-object p2
.end method
