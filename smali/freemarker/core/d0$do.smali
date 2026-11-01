.class Lfreemarker/core/d0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/core/LocalContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/core/d0;->B3([Lfreemarker/core/b4;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic for:Lfreemarker/core/d0;

.field public final synthetic if:[Lfreemarker/template/TemplateModel;


# direct methods
.method public constructor <init>(Lfreemarker/core/d0;Ljava/util/List;[Lfreemarker/template/TemplateModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/d0$do;->for:Lfreemarker/core/d0;

    iput-object p2, p0, Lfreemarker/core/d0$do;->do:Ljava/util/List;

    iput-object p3, p0, Lfreemarker/core/d0$do;->if:[Lfreemarker/template/TemplateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$do;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/d0$do;->if:[Lfreemarker/template/TemplateModel;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLocalVariableNames()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/d0$do;->do:Ljava/util/List;

    return-object v0
.end method
