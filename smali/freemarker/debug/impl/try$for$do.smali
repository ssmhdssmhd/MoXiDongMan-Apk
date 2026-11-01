.class Lfreemarker/debug/impl/try$for$do;
.super Lfreemarker/debug/impl/try$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/debug/impl/try$for;


# direct methods
.method public constructor <init>(Lfreemarker/debug/impl/try$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/debug/impl/try$for$do;->do:Lfreemarker/debug/impl/try$for;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/debug/impl/try$try;-><init>(Lfreemarker/debug/impl/try$do;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/try$for$do;->do:Lfreemarker/debug/impl/try$for;

    iget-object v0, v0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast v0, Lfreemarker/template/do;

    invoke-virtual {v0, p1}, Lfreemarker/template/do;->I1(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/try$for$do;->do:Lfreemarker/debug/impl/try$for;

    iget-object v0, v0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast v0, Lfreemarker/template/do;

    invoke-virtual {v0}, Lfreemarker/template/do;->J1()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
