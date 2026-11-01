.class Lfreemarker/core/instanceof$break;
.super Lfreemarker/core/extends;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/instanceof$break$do;
    }
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance p2, Lfreemarker/core/instanceof$break$do;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lfreemarker/core/instanceof$break$do;-><init>(Lfreemarker/core/instanceof$break;Lfreemarker/core/d1$do;Lfreemarker/core/instanceof$do;)V

    return-object p2
.end method
