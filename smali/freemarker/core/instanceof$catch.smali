.class Lfreemarker/core/instanceof$catch;
.super Lfreemarker/core/extends;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/instanceof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "catch"
.end annotation


# static fields
.field private static final super:Landroid/support/v4/ez1;

.field private static final throw:Landroid/support/v4/ez1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/ez1;

    const-string v1, "odd"

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/instanceof$catch;->super:Landroid/support/v4/ez1;

    .line 2
    new-instance v0, Landroid/support/v4/ez1;

    const-string v1, "even"

    invoke-direct {v0, v1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfreemarker/core/instanceof$catch;->throw:Landroid/support/v4/ez1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/extends;-><init>()V

    return-void
.end method


# virtual methods
.method public s(Lfreemarker/core/d1$do;Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/core/d1$do;->try()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    sget-object p1, Lfreemarker/core/instanceof$catch;->super:Landroid/support/v4/ez1;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/core/instanceof$catch;->throw:Landroid/support/v4/ez1;

    :goto_0
    return-object p1
.end method
