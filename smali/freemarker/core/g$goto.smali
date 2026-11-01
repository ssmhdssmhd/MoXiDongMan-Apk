.class Lfreemarker/core/g$goto;
.super Lfreemarker/core/strictfp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/g$goto$do;
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

    .line 1
    new-instance v0, Lfreemarker/core/g$goto$do;

    invoke-direct {v0, p0, p1, p2}, Lfreemarker/core/g$goto$do;-><init>(Lfreemarker/core/return;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-object v0
.end method
