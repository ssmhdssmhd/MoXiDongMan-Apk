.class Lfreemarker/core/f$break$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$break;


# direct methods
.method private constructor <init>(Lfreemarker/core/f$break;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/f$break$do;->do:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/f$break;Ljava/lang/String;Lfreemarker/core/f$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/f$break$do;-><init>(Lfreemarker/core/f$break;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    if-le v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/return;->h(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    new-instance v0, Landroid/support/v4/az1;

    iget-object v2, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    invoke-static {v2}, Lfreemarker/core/f$break;->r(Lfreemarker/core/f$break;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfreemarker/core/f$break$do;->do:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lfreemarker/core/f$break$do;->do:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    invoke-direct {v0, p1}, Landroid/support/v4/az1;-><init>(I)V

    return-object v0

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/az1;

    iget-object v0, p0, Lfreemarker/core/f$break$do;->if:Lfreemarker/core/f$break;

    invoke-static {v0}, Lfreemarker/core/f$break;->r(Lfreemarker/core/f$break;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfreemarker/core/f$break$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lfreemarker/core/f$break$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-direct {p1, v0}, Landroid/support/v4/az1;-><init>(I)V

    return-object p1
.end method
