.class Lfreemarker/core/f$catch;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "catch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/f$catch$do;
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance p2, Lfreemarker/core/f$catch$do;

    invoke-direct {p2, p0, p1}, Lfreemarker/core/f$catch$do;-><init>(Lfreemarker/core/f$catch;Ljava/lang/String;)V

    return-object p2
.end method
