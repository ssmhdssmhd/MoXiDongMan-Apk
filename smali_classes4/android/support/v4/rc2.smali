.class public final enum Landroid/support/v4/rc2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/rc2;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Landroid/support/v4/rc2;

.field private static final synthetic do:[Landroid/support/v4/rc2;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/rc2;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/rc2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/rc2;->INSTANCE:Landroid/support/v4/rc2;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/support/v4/rc2;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Landroid/support/v4/rc2;->do:[Landroid/support/v4/rc2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/rc2;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/rc2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/rc2;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/rc2;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/rc2;->do:[Landroid/support/v4/rc2;

    invoke-virtual {v0}, [Landroid/support/v4/rc2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/rc2;

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    return-void
.end method
