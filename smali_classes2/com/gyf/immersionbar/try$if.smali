.class Lcom/gyf/immersionbar/try$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyf/immersionbar/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final do:Lcom/gyf/immersionbar/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/gyf/immersionbar/try;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gyf/immersionbar/try;-><init>(Lcom/gyf/immersionbar/try$do;)V

    sput-object v0, Lcom/gyf/immersionbar/try$if;->do:Lcom/gyf/immersionbar/try;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/gyf/immersionbar/try;
    .locals 1

    .line 1
    sget-object v0, Lcom/gyf/immersionbar/try$if;->do:Lcom/gyf/immersionbar/try;

    return-object v0
.end method
