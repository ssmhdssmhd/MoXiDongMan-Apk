.class public final synthetic Landroid/support/v4/xb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic do:Landroid/support/v4/xb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/xb;

    invoke-direct {v0}, Landroid/support/v4/xb;-><init>()V

    sput-object v0, Landroid/support/v4/xb;->do:Landroid/support/v4/xb;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    check-cast p2, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1, p2}, Lcom/wsw/cospa/dao/do;->do(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)I

    move-result p1

    return p1
.end method
