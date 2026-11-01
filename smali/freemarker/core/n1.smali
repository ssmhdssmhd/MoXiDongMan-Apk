.class final Lfreemarker/core/n1;
.super Lfreemarker/core/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/i1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic for()Lfreemarker/core/i1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/n1;->try()Lfreemarker/core/n1;

    move-result-object v0

    return-object v0
.end method

.method public try()Lfreemarker/core/n1;
    .locals 3

    .line 1
    new-instance v0, Lfreemarker/core/n1;

    invoke-virtual {p0}, Lfreemarker/core/u3;->do()Lfreemarker/template/TemplateModelIterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfreemarker/core/n1;-><init>(Lfreemarker/template/TemplateModelIterator;Z)V

    return-object v0
.end method
