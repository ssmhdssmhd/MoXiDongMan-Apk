.class public Lfreemarker/core/j3;
.super Lfreemarker/core/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/core/p<",
        "Landroid/support/v4/n52;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Lfreemarker/core/j3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/j3;

    invoke-direct {v0}, Lfreemarker/core/j3;-><init>()V

    sput-object v0, Lfreemarker/core/j3;->do:Lfreemarker/core/j3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/p;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lfreemarker/template/utility/super;->case(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public const(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "rtf"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public do()Ljava/lang/String;
    .locals 1

    const-string v0, "application/rtf"

    return-object v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    const-string v0, "RTF"

    return-object v0
.end method

.method public bridge synthetic static(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/j3;->throws(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/n52;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lfreemarker/template/utility/super;->else(Ljava/lang/String;Ljava/io/Writer;)V

    return-void
.end method

.method public throws(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/n52;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/n52;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/n52;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
