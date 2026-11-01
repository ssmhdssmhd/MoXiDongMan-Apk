.class public final Landroid/support/v4/r0;
.super Landroid/support/v4/oc1;
.source "SourceFile"


# instance fields
.field private final break:Ljava/lang/String;

.field private final case:[Ljava/lang/String;

.field private final catch:[Ljava/lang/String;

.field private final class:[Ljava/lang/String;

.field private final const:Ljava/lang/String;

.field private final else:[Ljava/lang/String;

.field private final final:Ljava/lang/String;

.field private final for:[Ljava/lang/String;

.field private final goto:[Ljava/lang/String;

.field private final if:[Ljava/lang/String;

.field private final new:Ljava/lang/String;

.field private final super:Ljava/lang/String;

.field private final this:Ljava/lang/String;

.field private final throw:[Ljava/lang/String;

.field private final try:[Ljava/lang/String;

.field private final while:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 2
    sget-object v7, Lcom/google/zxing/client/result/else;->ADDRESSBOOK:Lcom/google/zxing/client/result/else;

    invoke-direct {p0, v7}, Landroid/support/v4/oc1;-><init>(Lcom/google/zxing/client/result/else;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 3
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phone numbers and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 5
    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Emails and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 7
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Addresses and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    move-object v7, p1

    .line 9
    iput-object v7, v0, Landroid/support/v4/r0;->if:[Ljava/lang/String;

    move-object v7, p2

    .line 10
    iput-object v7, v0, Landroid/support/v4/r0;->for:[Ljava/lang/String;

    move-object v7, p3

    .line 11
    iput-object v7, v0, Landroid/support/v4/r0;->new:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Landroid/support/v4/r0;->try:[Ljava/lang/String;

    .line 13
    iput-object v2, v0, Landroid/support/v4/r0;->case:[Ljava/lang/String;

    .line 14
    iput-object v3, v0, Landroid/support/v4/r0;->else:[Ljava/lang/String;

    .line 15
    iput-object v4, v0, Landroid/support/v4/r0;->goto:[Ljava/lang/String;

    move-object/from16 v1, p8

    .line 16
    iput-object v1, v0, Landroid/support/v4/r0;->this:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 17
    iput-object v1, v0, Landroid/support/v4/r0;->break:Ljava/lang/String;

    .line 18
    iput-object v5, v0, Landroid/support/v4/r0;->catch:[Ljava/lang/String;

    .line 19
    iput-object v6, v0, Landroid/support/v4/r0;->class:[Ljava/lang/String;

    move-object/from16 v1, p12

    .line 20
    iput-object v1, v0, Landroid/support/v4/r0;->const:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Landroid/support/v4/r0;->final:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Landroid/support/v4/r0;->super:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Landroid/support/v4/r0;->throw:[Ljava/lang/String;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Landroid/support/v4/r0;->while:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1
    invoke-direct/range {v0 .. v16}, Landroid/support/v4/r0;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public break()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->while:[Ljava/lang/String;

    return-object v0
.end method

.method public case()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->catch:[Ljava/lang/String;

    return-object v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->this:Ljava/lang/String;

    return-object v0
.end method

.method public class()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->if:[Ljava/lang/String;

    return-object v0
.end method

.method public const()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->for:[Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/support/v4/r0;->if:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Landroid/support/v4/r0;->for:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Landroid/support/v4/r0;->new:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Landroid/support/v4/r0;->super:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object v1, p0, Landroid/support/v4/r0;->const:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    iget-object v1, p0, Landroid/support/v4/r0;->catch:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    iget-object v1, p0, Landroid/support/v4/r0;->try:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 9
    iget-object v1, p0, Landroid/support/v4/r0;->else:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 10
    iget-object v1, p0, Landroid/support/v4/r0;->this:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 11
    iget-object v1, p0, Landroid/support/v4/r0;->throw:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 12
    iget-object v1, p0, Landroid/support/v4/r0;->final:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 13
    iget-object v1, p0, Landroid/support/v4/r0;->while:[Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->new([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 14
    iget-object v1, p0, Landroid/support/v4/r0;->break:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/support/v4/oc1;->for(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->final:Ljava/lang/String;

    return-object v0
.end method

.method public final()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->break:Ljava/lang/String;

    return-object v0
.end method

.method public goto()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->goto:[Ljava/lang/String;

    return-object v0
.end method

.method public import()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->new:Ljava/lang/String;

    return-object v0
.end method

.method public native()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->super:Ljava/lang/String;

    return-object v0
.end method

.method public public()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->throw:[Ljava/lang/String;

    return-object v0
.end method

.method public super()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->const:Ljava/lang/String;

    return-object v0
.end method

.method public this()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->else:[Ljava/lang/String;

    return-object v0
.end method

.method public throw()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->try:[Ljava/lang/String;

    return-object v0
.end method

.method public try()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->class:[Ljava/lang/String;

    return-object v0
.end method

.method public while()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/r0;->case:[Ljava/lang/String;

    return-object v0
.end method
