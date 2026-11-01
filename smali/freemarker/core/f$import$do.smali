.class Lfreemarker/core/f$import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$import;


# direct methods
.method private constructor <init>(Lfreemarker/core/f$import;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/f$import$do;->if:Lfreemarker/core/f$import;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/f$import$do;->do:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/f$import;Ljava/lang/String;Lfreemarker/core/f$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/f$import$do;-><init>(Lfreemarker/core/f$import;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/f$import$do;->if:Lfreemarker/core/f$import;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/f$import$do;->if:Lfreemarker/core/f$import;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/core/f$import$do;->do:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/f$import$do;->do:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/f$import$do;->do:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
