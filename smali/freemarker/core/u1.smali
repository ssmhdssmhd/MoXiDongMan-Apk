.class final Lfreemarker/core/u1;
.super Lfreemarker/core/q3;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateCollectionModel;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/q3;-><init>(I)V

    return-void
.end method


# virtual methods
.method public iterator()Lfreemarker/template/TemplateModelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    new-instance v0, Lfreemarker/core/u1$do;

    invoke-direct {v0, p0}, Lfreemarker/core/u1$do;-><init>(Lfreemarker/core/u1;)V

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const v0, 0x7fffffff

    return v0
.end method
