.class Lfreemarker/core/i$do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateModelIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/i$do;->iterator()Lfreemarker/template/TemplateModelIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private do:I

.field public final synthetic for:Lfreemarker/core/i$do;

.field public final synthetic if:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lfreemarker/core/i$do;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/i$do$for;->for:Lfreemarker/core/i$do;

    iput-object p2, p0, Lfreemarker/core/i$do$for;->if:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lfreemarker/core/i$do$for;->do:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/core/i$do$for;->do:I

    iget-object v1, p0, Lfreemarker/core/i$do$for;->if:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lfreemarker/template/TemplateModel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/i$do$for;->if:Ljava/util/ArrayList;

    iget v1, p0, Lfreemarker/core/i$do$for;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/core/i$do$for;->do:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/vl2;

    const-string v2, "There were no more regular expression matches"

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1
.end method
