.class Lfreemarker/debug/impl/try$if;
.super Lfreemarker/debug/impl/try$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final if:Ljava/util/List;


# instance fields
.field public final do:Lfreemarker/core/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "arithmetic_engine"

    const-string v1, "boolean_format"

    const-string v2, "classic_compatible"

    const-string v3, "locale"

    const-string v4, "number_format"

    const-string v5, "object_wrapper"

    const-string v6, "template_exception_handler"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/try$if;->if:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/debug/impl/try$try;-><init>(Lfreemarker/debug/impl/try$do;)V

    .line 2
    iput-object p1, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

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

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/try$if;->do:Lfreemarker/core/t;

    invoke-virtual {v0, p1}, Lfreemarker/core/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public if()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/debug/impl/try$if;->if:Ljava/util/List;

    return-object v0
.end method
