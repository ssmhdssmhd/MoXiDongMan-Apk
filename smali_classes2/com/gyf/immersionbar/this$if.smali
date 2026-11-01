.class Lcom/gyf/immersionbar/this$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final do:Lcom/gyf/immersionbar/this;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/this;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/this;-><init>(Lcom/gyf/immersionbar/this$do;)V

    sput-object v0, Lcom/gyf/immersionbar/this$if;->do:Lcom/gyf/immersionbar/this;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/gyf/immersionbar/this;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/this$if;->do:Lcom/gyf/immersionbar/this;

    return-object v0
.end method
