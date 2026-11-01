.class public final synthetic Landroid/support/v4/hk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic do:Landroid/support/v4/hk2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/hk2;

    invoke-direct {v0}, Landroid/support/v4/hk2;-><init>()V

    sput-object v0, Landroid/support/v4/hk2;->do:Landroid/support/v4/hk2;

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

    check-cast p1, Lcom/wsw/cospa/bean/Node;

    check-cast p2, Lcom/wsw/cospa/bean/Node;

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->instanceof(Lcom/wsw/cospa/bean/Node;Lcom/wsw/cospa/bean/Node;)I

    move-result p1

    return p1
.end method
