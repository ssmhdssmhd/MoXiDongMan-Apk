.class Lcom/gyf/immersionbar/catch$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final do:Lcom/gyf/immersionbar/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/catch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/catch;-><init>(Lcom/gyf/immersionbar/catch$do;)V

    sput-object v0, Lcom/gyf/immersionbar/catch$if;->do:Lcom/gyf/immersionbar/catch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/gyf/immersionbar/catch;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/catch$if;->do:Lcom/gyf/immersionbar/catch;

    return-object v0
.end method
