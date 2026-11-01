.class Lfreemarker/core/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;


# instance fields
.field private do:Lfreemarker/template/TemplateModelIterator;


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/w41;->check(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lfreemarker/core/u3;->do:Lfreemarker/template/TemplateModelIterator;

    return-void
.end method


# virtual methods
.method public do()Lfreemarker/template/TemplateModelIterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/u3;->do:Lfreemarker/template/TemplateModelIterator;

    return-object v0
.end method

.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/u3;->do:Lfreemarker/template/TemplateModelIterator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lfreemarker/core/u3;->do:Lfreemarker/template/TemplateModelIterator;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t return the iterator again, as this TemplateCollectionModel can only be iterated once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
