.class abstract Lfreemarker/core/i1;
.super Lfreemarker/core/u3;
.source "SourceFile"


# instance fields
.field private final if:Z


# direct methods
.method public constructor <init>(Lfreemarker/template/TemplateModelIterator;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/u3;-><init>(Lfreemarker/template/TemplateModelIterator;)V

    .line 2
    iput-boolean p2, p0, Lfreemarker/core/i1;->if:Z

    return-void
.end method


# virtual methods
.method public abstract for()Lfreemarker/core/i1;
.end method

.method public final if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/i1;->if:Z

    return v0
.end method

.method public final new()Lfreemarker/core/i1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/core/i1;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/i1;->for()Lfreemarker/core/i1;

    move-result-object v0

    :goto_0
    return-object v0
.end method
