.class Lfreemarker/core/protected$for;
.super Lfreemarker/core/protected$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/protected$for$do;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/protected$do;-><init>(Ljava/lang/Boolean;I)V

    return-void
.end method


# virtual methods
.method public r(Ljava/util/Date;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lfreemarker/core/protected$do;->t(I)V

    .line 2
    new-instance v0, Lfreemarker/core/protected$for$do;

    invoke-direct {v0, p0, p1, p2, p3}, Lfreemarker/core/protected$for$do;-><init>(Lfreemarker/core/protected$for;Ljava/util/Date;ILfreemarker/core/d0;)V

    return-object v0
.end method
