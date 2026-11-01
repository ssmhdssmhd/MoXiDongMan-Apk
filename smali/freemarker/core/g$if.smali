.class Lfreemarker/core/g$if;
.super Lfreemarker/core/default;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/ICIChainMember;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/g$if$do;
    }
.end annotation


# instance fields
.field private final final:Lfreemarker/core/g$if$do;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfreemarker/core/default;-><init>()V

    .line 2
    new-instance v0, Lfreemarker/core/g$if$do;

    invoke-direct {v0}, Lfreemarker/core/g$if$do;-><init>()V

    iput-object v0, p0, Lfreemarker/core/g$if;->final:Lfreemarker/core/g$if$do;

    return-void
.end method


# virtual methods
.method public getMinimumICIVersion()I
    .locals 1

    .line 1
    sget v0, Landroid/support/v4/ul2;->for:I

    return v0
.end method

.method public getPreviousICIChainMember()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/g$if;->final:Lfreemarker/core/g$if$do;

    return-object v0
.end method

.method public r(Ljava/lang/String;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0

    .line 1
    new-instance p2, Landroid/support/v4/ez1;

    invoke-static {p1}, Lfreemarker/template/utility/super;->catch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
