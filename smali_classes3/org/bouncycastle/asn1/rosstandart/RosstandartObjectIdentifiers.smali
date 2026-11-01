.class public interface abstract Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final id_tc26:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_agreement:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_agreement_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_agreement_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_28147_param_Z:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_256_paramSet:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_512_paramSet:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_hmac_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_hmac_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

.field public static final id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

.field public static final rosstandart:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    const-string v1, "1.2.643.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->rosstandart:Lorg/bouncycastle/asn1/catch;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.2.2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.2.3"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.4.1"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_hmac_gost_3411_12_256:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.4.2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_hmac_gost_3411_12_512:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.1.1"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.1.2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.3.3"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    const-string v2, "1.6"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_256:Lorg/bouncycastle/asn1/catch;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_agreement_gost_3410_12_512:Lorg/bouncycastle/asn1/catch;

    const-string v2, "2.1.1"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSet:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_256_paramSetA:Lorg/bouncycastle/asn1/catch;

    const-string v2, "2.1.2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSet:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetA:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetB:Lorg/bouncycastle/asn1/catch;

    const-string v1, "3"

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3410_12_512_paramSetC:Lorg/bouncycastle/asn1/catch;

    const-string v1, "2.5.1.1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->catch(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_28147_param_Z:Lorg/bouncycastle/asn1/catch;

    return-void
.end method
