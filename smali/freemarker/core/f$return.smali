.class Lfreemarker/core/f$return;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "return"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/f$return$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/strictfp;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    new-instance p2, Lfreemarker/core/f$return$do;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lfreemarker/core/f$return$do;-><init>(Lfreemarker/core/f$return;Ljava/lang/String;Lfreemarker/core/f$do;)V

    return-object p2
.end method
