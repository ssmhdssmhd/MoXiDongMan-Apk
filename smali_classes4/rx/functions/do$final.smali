.class final enum Lrx/functions/do$final;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/functions/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "final"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/functions/do$final;",
        ">;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lrx/functions/do$final;

.field private static final synthetic do:[Lrx/functions/do$final;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/functions/do$final;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/functions/do$final;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/functions/do$final;->INSTANCE:Lrx/functions/do$final;

    const/4 v1, 0x1

    new-array v1, v1, [Lrx/functions/do$final;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lrx/functions/do$final;->do:[Lrx/functions/do$final;

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

.method public static valueOf(Ljava/lang/String;)Lrx/functions/do$final;
    .locals 1

    .line 1
    const-class v0, Lrx/functions/do$final;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/functions/do$final;

    return-object p0
.end method

.method public static values()[Lrx/functions/do$final;
    .locals 1

    .line 1
    sget-object v0, Lrx/functions/do$final;->do:[Lrx/functions/do$final;

    invoke-virtual {v0}, [Lrx/functions/do$final;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/functions/do$final;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lrx/functions/do$final;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    new-instance v0, Landroid/support/v4/y61;

    invoke-direct {v0, p1}, Landroid/support/v4/y61;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
