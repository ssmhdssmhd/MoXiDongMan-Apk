.class Lfreemarker/debug/impl/try$case;
.super Lfreemarker/debug/impl/try$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# static fields
.field private static final new:Ljava/util/List;


# instance fields
.field private final for:Landroid/support/v4/ez1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$if;->if:Ljava/util/List;

    const-string v1, "configuration"

    const-string v2, "name"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lfreemarker/debug/impl/try$try;->do(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/try$case;->new:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/static;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/debug/impl/try$if;-><init>(Lfreemarker/core/t;)V

    .line 2
    new-instance v0, Landroid/support/v4/ez1;

    invoke-virtual {p1}, Lfreemarker/template/static;->h1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfreemarker/debug/impl/try$case;->for:Landroid/support/v4/ez1;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    const-string v0, "configuration"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    check-cast p1, Lfreemarker/template/static;

    invoke-virtual {p1}, Lfreemarker/template/static;->b1()Lfreemarker/template/do;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/debug/impl/try;->new(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;
    :try_end_0
    .catch Ljava/rmi/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Landroid/support/v4/k52;

    invoke-direct {v0, p1}, Landroid/support/v4/k52;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    const-string v0, "name"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lfreemarker/debug/impl/try$case;->for:Landroid/support/v4/ez1;

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lfreemarker/debug/impl/try$if;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$case;->new:Ljava/util/List;

    return-object v0
.end method
