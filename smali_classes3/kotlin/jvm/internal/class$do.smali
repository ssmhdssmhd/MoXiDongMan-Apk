.class Lkotlin/jvm/internal/class$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/iz1;
    version = "1.2"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static final do:Lkotlin/jvm/internal/class$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlin/jvm/internal/class$do;

    invoke-direct {v0}, Lkotlin/jvm/internal/class$do;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/class$do;->do:Lkotlin/jvm/internal/class$do;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lkotlin/jvm/internal/class$do;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/class$do;->do:Lkotlin/jvm/internal/class$do;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/jvm/internal/class$do;->do:Lkotlin/jvm/internal/class$do;

    return-object v0
.end method
