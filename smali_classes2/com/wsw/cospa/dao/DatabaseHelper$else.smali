.class Lcom/wsw/cospa/dao/DatabaseHelper$else;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/dao/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# static fields
.field private static final do:Lcom/wsw/cospa/dao/DatabaseHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wsw/cospa/dao/DatabaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;-><init>(Lcom/wsw/cospa/dao/DatabaseHelper$do;)V

    sput-object v0, Lcom/wsw/cospa/dao/DatabaseHelper$else;->do:Lcom/wsw/cospa/dao/DatabaseHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcom/wsw/cospa/dao/DatabaseHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/dao/DatabaseHelper$else;->do:Lcom/wsw/cospa/dao/DatabaseHelper;

    return-object v0
.end method
